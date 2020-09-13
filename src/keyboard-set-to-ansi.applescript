tell application "System Preferences"
	activate
	set current pane to pane "com.apple.preference.keyboard"
	delay 0.4
end tell
tell application "System Events"
	tell process "System Preferences"
		tell tab group 1 of window "キーボード"
			click button "キーボードの種類を変更…"
			delay 0.4
		end tell
	end tell
	tell window "キーボード設定アシスタント" of process "KeyboardSetupAssistant"
		click button "続ける"
		tell application "System Events" to keystroke "z" using command down
		delay 0.4
		click button "スキップ" of sheet 1
		delay 0.4
		tell radio group 1 of group 1
			click radio button "ANSI（米国その他）"
		end tell
		click button "完了"
	end tell
end tell
tell application "System Preferences" to close windows
