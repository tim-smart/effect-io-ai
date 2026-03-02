Package: `effect`<br />
Module: `Option`<br />

## Option.contains

Checks if an `Option` contains a value equal to the given one, using default
structural equality.

**When to use**

- Quick membership test with standard equality

**Behavior**

- `Some` where `Equal.equals(value, a)` is `true` → `true`
- `Some` where not equal, or `None` → `false`

**Example** (Checking containment)

```ts
import { Option } from "effect"

console.log(Option.some(2).pipe(Option.contains(2)))
// Output: true

console.log(Option.some(1).pipe(Option.contains(2)))
// Output: false

console.log(Option.none().pipe(Option.contains(2)))
// Output: false
```

**See**

- `containsWith` for custom equality
- `exists` to test with a predicate

**Signature**

```ts
declare const contains: { <A>(a: A): (self: Option<A>) => boolean; <A>(self: Option<A>, a: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L2296)

Since v2.0.0