Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isTagged

Checks whether a value has a `_tag` property equal to the given tag.

When to use:
- You model tagged unions with a `_tag` field.
- You want a quick, structural guard for tagged values.

Behavior:
- Pure; does not mutate input.
- Uses `hasProperty` and strict equality on `_tag`.

**Example** (Guard tagged)

```ts
import { Predicate } from "effect"

const isOk = Predicate.isTagged("Ok")

console.log(isOk({ _tag: "Ok", value: 1 }))
```

See also: `hasProperty`

**Signature**

```ts
declare const isTagged: { <K extends string>(tag: K): (self: unknown) => self is { _tag: K; }; <K extends string>(self: unknown, tag: K): self is { _tag: K; }; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1147)

Since v2.0.0