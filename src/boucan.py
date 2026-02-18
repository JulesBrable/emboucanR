import time

import chime


def raise_noisy_noise(n: int, delay: float = 0.5):
    for _ in range(n):
        time.sleep(delay)
        for theme in list(chime.themes()):
            chime.theme(theme)
            chime.success()
            chime.error()
