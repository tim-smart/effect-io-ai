Package: `effect`<br />
Module: `Option`<br />

## Option.orElseResult

Returns the first available value and marks whether it came from the fallback.

**When to use**

Use when you need to know whether a present value came from the primary or
fallback `Option`.

**Details**

- `self` is `Some` → `Some(Result.fail(value))` (value from primary)
- `self` is `None`, `that()` is `Some` → `Some(Result.succeed(value))` (value from fallback)
- Both `None` → `None`

**Example** (Tracking value source)

```ts
import { Option } from "effect"

console.log(Option.orElseResult(Option.some("primary"), () => Option.some("fallback")))
// Output: { _id: 'Option', _tag: 'Some', value: { _tag: 'Failure', value: 'primary' } }

console.log(Option.orElseResult(Option.none(), () => Option.some("fallback")))
// Output: { _id: 'Option', _tag: 'Some', value: { _tag: 'Success', value: 'fallback' } }
```

**See**

- `orElse` for the simpler variant without source tracking

**Signature**

```ts
declare const orElseResult: { <B>(that: LazyArg<Option<B>>): <A>(self: Option<A>) => Option<Result<B, A>>; <A, B>(self: Option<A>, that: LazyArg<Option<B>>): Option<Result<B, A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L734)

Since v4.0.0