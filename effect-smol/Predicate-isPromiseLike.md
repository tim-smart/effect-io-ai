Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isPromiseLike

Checks whether a value is `PromiseLike` (has a `then` method).

**When to use**

Use when you need a `Predicate` guard for promise-like values with a
callable `then` method.

**Details**

Performs a structural check for a callable `then`.

**Example** (Guard promise-like)

```ts
import { Predicate } from "effect"

const data: unknown = { then: () => {} }

console.log(Predicate.isPromiseLike(data))
```

**See**

- `isPromise`

**Signature**

```ts
declare const isPromiseLike: (input: unknown) => input is PromiseLike<unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1402)

Since v2.0.0