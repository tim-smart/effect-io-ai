Package: `effect`<br />
Module: `Schema`<br />

## Schema.UniqueSymbol

A schema for unique symbols.

**Example**

```ts
import { Schema } from "effect"

const a = Symbol.for("a")
const schema = Schema.UniqueSymbol(a)
```

**Signature**

```ts
declare const UniqueSymbol: <const sym extends symbol>(symbol: sym) => UniqueSymbol<sym>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1518)

Since v4.0.0