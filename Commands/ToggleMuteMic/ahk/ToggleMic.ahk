#NoEnv
SendMode Input
SetBatchLines -1
#Persistent ; Указывает, что скрипт будет работать в фоновом режиме

mic_state := 1 ; По умолчанию микрофон включен

ToggleMuteMic() {
    global mic_state
    if (mic_state) {
        SoundSetWaveVolume(0) ; Отключение микрофона
        mic_state := 0
    } else {
        SoundSetWaveVolume(100) ; Включение микрофона
        mic_state := 1
    }
}

^#m::ToggleMuteMic ; Сочетание Ctrl+Win+M для переключения микрофона

Return 