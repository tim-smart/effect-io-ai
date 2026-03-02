Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isPromise

Checks whether a value is a `Promise`-like object with `then` and `catch`.

When to use:
- You need to detect promise instances across realms.

Behavior:
- Pure; does not mutate input.
- Structural check for `then` and `catch` functions.

**Example** (Guard promise)

```ts
import { Predicate } from "effect"

const data: unknown = Promise.resolve(1)

console.log(Predicate.isPromise(data))
```

See also: `isPromiseLike`

**Signature**

```ts
declare const isPromise: (input: unknown) => input is Promise<unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1297)

Since v2.0.0