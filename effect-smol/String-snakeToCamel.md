Package: `effect`<br />
Module: `String`<br />

## String.snakeToCamel

Converts a snake_case string to camelCase.

**Example**

```ts
import { String } from "effect"

console.log(String.snakeToCamel("hello_world")) // "helloWorld"
console.log(String.snakeToCamel("foo_bar_baz")) // "fooBarBaz"
```

**Signature**

```ts
declare const snakeToCamel: (self: string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L992)

Since v2.0.0