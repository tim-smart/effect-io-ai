Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isUnknown

Type guard that always returns `true`.

**When to use**

Use when you need a `Predicate` that always accepts, e.g. as a placeholder.

**Example** (Always matches)

```ts
import { Predicate } from "effect"

console.log(Predicate.isUnknown(123))
```

**See**

- `isNever`

**Signature**

```ts
declare const isUnknown: (_: unknown) => _ is unknown
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L972)

Since v2.0.0