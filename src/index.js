import app from "./app";

const main = () => {
  app.listen(app.get("port"));
  console.log("ci: test pipeline commit 1")
  console.log("Server on port", app.get("port"));
};

main();
