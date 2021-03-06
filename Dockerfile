FROM hayd/alpine-deno:1.1.3

EXPOSE 8000

WORKDIR /app

USER deno

COPY deps.ts .
RUN deno cache deps.ts

COPY . .
RUN deno cache main.ts

CMD ["run", "--allow-net", "main.ts"]
