FROM migrate/migrate

FROM node:10-slim

COPY --from=0 . .

COPY . .

CMD [ "npm", "run", "docker:migrate-up" ]