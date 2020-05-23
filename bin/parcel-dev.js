#!/usr/bin/env node

const Bundler = require('parcel-bundler');
const express = require('express');

const bundler = new Bundler(['src/index.html', 'src/404.html']);
const app = express();

app.get('/', (req, res, next) => {
  req.url = '/index.html';
  app._router.handle(req, res, next);
});

app.use(bundler.middleware());

app.use((req, res, next) => {
  req.url = '/404.html';
  res.status(404);
  app._router.handle(req, res, next);
});

const port = Number(process.env.PORT || 1234);
app.listen(port);
console.log(`Server running at http://localhost:${port}`);