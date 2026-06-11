Package: `effect`<br />
Module: `RegExp`<br />

## RegExp.RegExp

Exposes the JavaScript regular expression constructor from `globalThis`.

**When to use**

Use to construct JavaScript regular expressions through the Effect module
namespace.

**Example** (Creating a regular expression)

```ts
import { RegExp } from "effect"

// Create a regular expression using Effect's RegExp constructor
const pattern = new RegExp.RegExp("hello", "i")

// Test the pattern
console.log(pattern.test("Hello World")) // true
console.log(pattern.test("goodbye")) // false
```

**Signature**

```ts
declare const RegExp: RegExpConstructor
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RegExp.ts#L39)

Since v4.0.0