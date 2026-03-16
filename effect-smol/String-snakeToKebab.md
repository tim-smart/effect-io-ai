Package: `effect`<br />
Module: `String`<br />

## String.snakeToKebab

Converts a snake_case string to kebab-case.

**Example**

```ts
import { String } from "effect"

console.log(String.snakeToKebab("hello_world")) // "hello-world"
console.log(String.snakeToKebab("foo_bar_baz")) // "foo-bar-baz"
```

**Signature**

```ts
declare const snakeToKebab: (self: string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L1029)

Since v2.0.0