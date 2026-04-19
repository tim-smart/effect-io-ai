Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.camelToSnake

Converts a `camelCase` string to `snake_case`.

Behavior:
- Pure, delegates to `String.camelToSnake`.

**Example** (Camel to snake)

```ts
import { SchemaGetter } from "effect"

const toSnake = SchemaGetter.camelToSnake<string>()
```

See also:
- `snakeToCamel` — inverse operation

**Signature**

```ts
declare const camelToSnake: <E extends string>() => Getter<string, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L945)

Since v4.0.0