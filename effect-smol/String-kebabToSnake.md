Package: `effect`<br />
Module: `String`<br />

## String.kebabToSnake

Converts a kebab-case string to snake_case.

**Example**

```ts
import { String } from "effect"

console.log(String.kebabToSnake("hello-world")) // "hello_world"
console.log(String.kebabToSnake("foo-bar-baz")) // "foo_bar_baz"
```

**Signature**

```ts
declare const kebabToSnake: (self: string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L1085)

Since v2.0.0