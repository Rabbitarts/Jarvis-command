#NoEnv
SendMode Input

; Настройка горячей клавиши
^#s::
    ; Создание скриншота и сохранение в буфер обмена
    Clipboard := "" ; Очистка буфера обмена
    CoordMode, Pixel, Screen ; Установка координат в пикселях
    Send, {PrintScreen}
    Clipboard := Image ; Сохранение скриншота в буфер обмена

return