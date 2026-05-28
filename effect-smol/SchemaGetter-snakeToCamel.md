Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.snakeToCamel

Converts a `snake_case` string to `camelCase`.

**Details**

- Pure, delegates to `String.snakeToCamel`.

**Example** (Snake to camel)

```ts
import { SchemaGetter } from "effect"

const toCamel = SchemaGetter.snakeToCamel<string>()
```

**See**

- `camelToSnake` for the inverse operation

**Signature**

```ts
declare const snakeToCamel: <E extends string>() => Getter<string, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L946)

Since v4.0.0