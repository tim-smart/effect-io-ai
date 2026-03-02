Package: `effect`<br />
Module: `Array`<br />

## Array.fromOption

Converts an `Option` to an array: `Some(a)` becomes `[a]`, `None` becomes `[]`.

**Example** (Option to array)

```ts
import { Array, Option } from "effect"

console.log(Array.fromOption(Option.some(1))) // [1]
console.log(Array.fromOption(Option.none())) // []
```

**See**

- `getSomes` — extract `Some` values from an array of Options

**Signature**

```ts
declare const fromOption: <A>(self: Option.Option<A>) => Array<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L402)

Since v2.0.0