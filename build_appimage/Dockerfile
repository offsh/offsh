FROM appimagecrafters/appimage-builder:latest

RUN apt-get install -y git && \
    pip3 install git+https://github.com/niess/python-appimage

ADD build_offshell.sh /entrypoint.sh
ADD pre-requirements.txt /pre-requirements.txt

RUN chmod u+x /entrypoint.sh

CMD "/entrypoint.sh"