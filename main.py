import argparse

from src.boucan import raise_noisy_noise


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--n", type=int, default=20)
    args = parser.parse_args()
    raise_noisy_noise(args.n)


if __name__ == "__main__":
    main()
