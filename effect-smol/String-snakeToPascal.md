Package: `effect`<br />
Module: `String`<br />

## String.snakeToPascal

Converts a snake_case string to PascalCase.

**Example**

```ts
import { String } from "effect"

console.log(String.snakeToPascal("hello_world")) // "HelloWorld"
console.log(String.snakeToPascal("foo_bar_baz")) // "FooBarBaz"
```

**Signature**

```ts
declare const snakeToPascal: (self: string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L1007)

Since v2.0.0