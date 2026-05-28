Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isPromiseLike

Checks whether a value is `PromiseLike` (has a `then` method).

**When to use**

Use when you only need `then` to interop with promise-like values.

**Details**

- Structural check for a callable `then`.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1399)

Since v2.0.0