Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.Date

Coerces a value to a `Date` using `new Date(input)`.

**When to use**

Use when you need a schema getter to coerce a present string, number, or
existing date object into a new date object.

**Details**

- Delegates to `new globalThis.Date(input)`.
- Does not validate the result — may produce an invalid Date.

**Example** (Coerce to Date)

```ts
import { SchemaGetter } from "effect"

const toDate = SchemaGetter.Date<string>()
// Getter<Date, string>
```

**See**

- `dateTimeUtcFromInput` for validated DateTime parsing

**Signature**

```ts
declare const Date: <E extends string | number | Date>() => Getter<Date, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L791)

Since v4.0.0