import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:js_design_kit/js_design_kit.dart';
import 'package:js_design_kit_example/library/debug/fps/index.dart';

import '../manager/index.dart';
import '../utils/index.dart';

//////////////////////////// 悬浮按钮 ////////////////////////////

class SMDebugButton extends StatefulWidget {
  /// 点击事件
  final Function onPress;
  final Function(bool isOpen) onOpenPerformanceCallBack;
  SMDebugButton({required this.onPress, required this.onOpenPerformanceCallBack});

  @override
  _SMDebugButtonState createState() => _SMDebugButtonState();
}

class _SMDebugButtonState extends State<SMDebugButton> {
  /// 流畅度
  double _fps = 0;

  @override
  void initState() {
    super.initState();

    SMFPSManager.instance.startListenerScheduler((fps) {
      setState(() {
        _fps = fps ?? 60;
      });
    });
  }

  @override
  void dispose() {
    SMFPSManager.instance..removerListenerScheduler();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: GestureDetector(
        onTap: () => widget.onPress(),
        child: Container(
          width: 100,
          height: 40,
          padding: EdgeInsets.symmetric(horizontal: 12),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: themeColors.card(),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: themeColors.line(), width: 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                _fps.toInt().toString() + 'fps',
                style: TextStyle(
                  color: SMDebugUtils.getFpsColor(fps: _fps),
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    SMDebugManager.instance.isRecordingFps = !SMDebugManager.instance.isRecordingFps;
                  });
                  widget.onOpenPerformanceCallBack(SMDebugManager.instance.isRecordingFps);
                },
                child: Icon(
                  SMDebugManager.instance.isRecordingFps ? Icons.stop_circle_outlined : Icons.play_circle_fill,
                  color: SMDebugManager.instance.isRecordingFps ? themeColors.red() : themeColors.green(),
                  size: 28,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
