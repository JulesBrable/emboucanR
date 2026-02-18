import chime


def raise_noisy_noise():
    for theme in list(chime.themes()):
        chime.theme(theme)
        chime.success()
        chime.error()
