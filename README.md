# llm-experimentation

This repository showcases a collection of examples focusing on natural language processing (NLP) and interactions with large language models (LLMs) using Python. It serves as a practical guide and a toolkit for leveraging some of the most powerful NLP libraries available today, including Huggingface's Transformers, the Natural Language Toolkit (NLTK), SpaCy and [LM Studio](https://lmstudio.ai/).

## Projects Overview

- **Chat with LM Studio**: A Python script for real-time chatting with an LLM via terminal. For demo purposes this can be run in a containerized version by building a Docker container with the Dockerfile in the repo.
- **Transformers and LLMs with Huggingface**: A comprehensive Jupyter notebook introducing the use of Transformers and LLMs, offering hands-on examples through the Huggingface library.
- **Exploring NLP with NLTK**: A Jupyter notebook dedicated to fundamental NLP tasks, utilizing the NLTK library and SpaCy for linguistic data manipulation and analysis.

## Getting Started

### Prerequisites

- Python 3.6+
- pip

### Setup and Installation

1. **Clone the repository**: First, clone this repository to your local machine using: 
    ```console
    git clone https://github.com/thanoskaravangelis/llm-experimentation.git
    ```

2. **Initialize your virtual environment**: Run the provided `venv.sh` script to set up a virtual environment and install all necessary dependencies. If you're on Unix/Linux or macOS, this can typically be done with:

    ```console
    chmod +x venv.sh
    ./venv.sh
    ```

## Local chat with LLM in a container

If you prefer to use Docker, you can build and run the `chat_with_lm_studio.py` script within a Docker container. This approach encapsulates the environment and dependencies, making it easier to run the script across different machines without worrying about the local setup.

### Prerequisites

- Python 3.6+
- pip
- Docker
- Running server on LM Studio with a model of your choice
- ... and some [hardware requirements](https://lmstudio.ai/#what-are-the-minimum-hardware-/-software-requirements?)

1. **Build the Docker Image**:
    Use the following command to build a Docker image named `chat_with_llm` from the Dockerfile located in your project directory. This process involves downloading the base image, installing any required dependencies, and setting up the environment as specified in your Dockerfile.

   ```console
   docker build -t chat_with_llm .
   ```
2. **Run the Container**:
    After building the image, you can run it with the following command. This command starts a container instance named `chat_with_llm` based on the `chat_with_llm` image. It uses the `--network="host"` option to allow the container to share the host's networking stack, which is useful if your script needs to access local network resources (like a locally running API).
    ```console
    docker run -it --rm --network="host" --name chat_with_llm chat_with_llm
    ```
    The `-it` flag attaches an interactive terminal to the container, `--rm` automatically removes the container file system when the container exits, and `--name` specifies a name for the running container.



## License

This repository is licensed under [MIT License](LICENSE.md). Feel free to use and modify the code for your projects.