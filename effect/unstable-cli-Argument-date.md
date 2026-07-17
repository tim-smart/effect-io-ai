Package: `effect`<br />
Module: `Argument`<br />

## Argument.date

Creates a positional date argument.

**Example** (Creating a date argument)

```ts
import { Argument } from "effect/unstable/cli"

const startDate = Argument.date("start-date")
```

**Signature**

```ts
declare const date: (name: string) => Argument<Date>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Argument.ts#L146)

Since v4.0.0