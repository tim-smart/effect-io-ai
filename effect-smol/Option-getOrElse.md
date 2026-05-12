Package: `effect`<br />
Module: `Option`<br />

## Option.getOrElse

Extracts the value from a `Some`, or evaluates a fallback thunk on `None`.

**When to use**

- Providing a default value for an absent `Option`
- Unwrapping with lazy evaluation of the fallback

**Behavior**

- `Some` → returns the inner value
- `None` → calls `onNone()` and returns its result
- `onNone` is only called when needed (lazy)

**Example** (Unwrapping with a fallback)

```ts
import { Option } from "effect"

console.log(Option.some(1).pipe(Option.getOrElse(() => 0)))
// Output: 1

console.log(Option.none().pipe(Option.getOrElse(() => 0)))
// Output: 0
```

**See**

- `getOrNull` to fall back to `null`
- `getOrUndefined` to fall back to `undefined`
- `getOrThrow` to throw on `None`

**Signature**

```ts
declare const getOrElse: { <B>(onNone: LazyArg<B>): <A>(self: Option<A>) => B | A; <A, B>(self: Option<A>, onNone: LazyArg<B>): A | B; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L666)

Since v2.0.0