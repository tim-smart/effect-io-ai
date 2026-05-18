Package: `effect`<br />
Module: `Pipeable`<br />

## Pipeable.pipeArguments

Applies a `pipe` method's variadic arguments to an initial value from left
to right.

This helper is intended for implementing `Pipeable.pipe` methods that
receive JavaScript's `arguments` object. With no functions it returns the
original value; otherwise it feeds each result into the next function.

**Signature**

```ts
declare const pipeArguments: <A>(self: A, args: IArguments) => unknown
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pipeable.ts#L559)

Since v2.0.0
**Example** (Implementing a pipe method)

```ts
import { Pipeable } from "effect"

class NumberBox {
  constructor(readonly value: number) {}

  pipe(..._fns: ReadonlyArray<(value: number) => number>): number {
    return Pipeable.pipeArguments(this.value, arguments) as number
  }
}

const result = new NumberBox(5).pipe(
  (n) => n + 2,
  (n) => n * 3
)
console.log(result) // 21
```