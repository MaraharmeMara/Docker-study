# Käytetään Ubuntu latest pohjalevykuvaa
FROM ubuntu:latest

# Päivitetään pakettilista ja asennetaan tarvittavat ohjelmistot
RUN apt-get update && apt-get install -y \
    curl \
    python-is-python3

# Ladataan yt-dlp ja annetaan sille suoritus oikeudet
RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp && \
    chmod a+rx /usr/local/bin/yt-dlp

# Asetetaan ympäristömuuttuja lokalisaatiota varten
ENV LC_ALL=C.UTF-8

# Määritetään ENTRYPOINT suorittamaan yt-dlp
ENTRYPOINT ["yt-dlp"]
