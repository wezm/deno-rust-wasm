import { assertStrictEquals } from "https://deno.land/std@0.156.0/testing/asserts.ts";
import "../src/index.ts";

Deno.test({
  name: "Integration",
  fn: async () => {
    const response = await fetch("http://localhost:8000", { method: "GET", });
    assertStrictEquals(await response.text(), "Hello from Rust 🦀");
  },
  sanitizeResources: false,
  sanitizeOps: false,
});
