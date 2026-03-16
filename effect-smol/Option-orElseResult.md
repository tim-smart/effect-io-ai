Package: `effect`<br />
Module: `Option`<br />

## Option.orElseResult

Like `orElse`, but wraps the result in a `Result` to indicate the
source of the value.

**When to use**

- Distinguishing whether a value came from the primary or fallback `Option`

**Behavior**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L776)

Since v2.0.0