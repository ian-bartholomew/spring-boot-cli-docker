FROM dockerfile/java:oracle-java8

# gvm
RUN curl -s get.gvmtool.net | bash

# frameworks
RUN bash -c "source ~/.gvm/bin/gvm-init.sh && gvm install gradle; exit 0"
RUN bash -c "source ~/.gvm/bin/gvm-init.sh && gvm install springboot; exit 0"

EXPOSE 8080
CMD /bin/bash
