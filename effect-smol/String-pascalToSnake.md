Package: `effect`<br />
Module: `String`<br />

## String.pascalToSnake

Converts a PascalCase string to snake_case.

**Example**

```ts
import { String } from "effect"

console.log(String.pascalToSnake("HelloWorld")) // "hello_world"
console.log(String.pascalToSnake("FooBarBaz")) // "foo_bar_baz"
```

**Signature**

```ts
declare const pascalToSnake: (self: string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L1061)

Since v2.0.0