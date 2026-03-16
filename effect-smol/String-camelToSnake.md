Package: `effect`<br />
Module: `String`<br />

## String.camelToSnake

Converts a camelCase string to snake_case.

**Example**

```ts
import { String } from "effect"

console.log(String.camelToSnake("helloWorld")) // "hello_world"
console.log(String.camelToSnake("fooBarBaz")) // "foo_bar_baz"
```

**Signature**

```ts
declare const camelToSnake: (self: string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L1045)

Since v2.0.0