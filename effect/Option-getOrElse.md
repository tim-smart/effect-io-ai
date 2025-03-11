## getOrElse

Returns the value contained in the `Option` if it is `Some`, otherwise
evaluates and returns the result of `onNone`.

**Details**

This function allows you to provide a fallback value or computation for when
an `Option` is `None`. If the `Option` contains a value (`Some`), that value
is returned. If it is empty (`None`), the `onNone` function is executed, and
its result is returned instead.

This utility is helpful for safely handling `Option` values by ensuring you
always receive a meaningful result, whether or not the `Option` contains a
value. It is particularly useful for providing default values or alternative
logic when working with optional values.

**Example**

```ts
import { Option } from "effect"

console.log(Option.some(1).pipe(Option.getOrElse(() => 0)))
// Output: 1

console.log(Option.none().pipe(Option.getOrElse(() => 0)))
// Output: 0
```

**See**

- `getOrNull` for a version that returns `null` instead of executing a function.
- `getOrUndefined` for a version that returns `undefined` instead of executing a function.

**Signature**

```ts
declare const getOrElse: { <B>(onNone: LazyArg<B>): <A>(self: Option<A>) => B | A; <A, B>(self: Option<A>, onNone: LazyArg<B>): A | B; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L500)

Since v2.0.0