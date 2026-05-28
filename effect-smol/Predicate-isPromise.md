Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isPromise

Checks whether a value is a `Promise`-like object with `then` and `catch`.

**When to use**

Use when you need to detect promise instances across realms.

**Details**

- Structural check for `then` and `catch` functions.

**Example** (Guard promise)

```ts
import { Predicate } from "effect"

const data: unknown = Promise.resolve(1)

console.log(Predicate.isPromise(data))
```

**See**

- `isPromiseLike`

**Signature**

```ts
declare const isPromise: (input: unknown) => input is Promise<unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1370)

Since v2.0.0