FROM alpine as first-stage
COPY 228m/ /app/1/
COPY 228m/ /app/2/

FROM alpine as second-stage
COPY --from=first-stage /bin /bin/
COPY 228m/ /app/3/
COPY 228m/ /app/4/
COPY ./Dockerfile /app/Dockerfile

FROM alpine as third-stage
COPY --from=second-stage /bin /bin/
COPY 228m/ /app/5/
COPY 228m/ /app/6/
