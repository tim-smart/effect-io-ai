Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isUnknown

A guard that always returns `true`.

When to use:
- You need a predicate that always accepts, e.g. as a placeholder.

Behavior:
- Pure; does not mutate input.
- Always returns `true`.

**Example** (Always matches)

```ts
import { Predicate } from "effect"

console.log(Predicate.isUnknown(123))
```

See also: `isNever`

**Signature**

```ts
declare const isUnknown: (_: unknown) => _ is unknown
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L965)

Since v2.0.0