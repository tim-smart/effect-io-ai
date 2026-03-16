Package: `effect`<br />
Module: `String`<br />

## String.concat

Concatenates two strings at runtime.

**Example**

```ts
import { pipe, String } from "effect"

const result1 = String.concat("hello", "world")
console.log(result1) // "helloworld"

const result2 = pipe("hello", String.concat("world"))
console.log(result2) // "helloworld"
```

**Signature**

```ts
declare const concat: { <B extends string>(that: B): <A extends string>(self: A) => Concat<A, B>; <A extends string, B extends string>(self: A, that: B): Concat<A, B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L127)

Since v2.0.0