import React from "react";
import ReactDOM from "react-dom";
import OtherPage from "./OtherPage";

it("renders without crashing", () => {
  const div = document.createElement("div");
  ReactDOM.render(<OtherPage />, div);
  ReactDOM.unmountComponentAtNode(div);
});
