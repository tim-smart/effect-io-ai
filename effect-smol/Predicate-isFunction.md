Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isFunction

Checks whether a value is a `function`.

When to use:
- You need to guard an `unknown` value as callable.

Behavior:
- Pure; does not mutate input.
- Uses `typeof input === "function"`.

**Example** (Guard function)

```ts
import { Predicate } from "effect"

const data: unknown = () => 1

if (Predicate.isFunction(data)) {
  console.log(data())
}
```

See also: `isObjectKeyword`

**Signature**

```ts
declare const isFunction: (input: unknown) => input is Function
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L733)

Since v2.0.0