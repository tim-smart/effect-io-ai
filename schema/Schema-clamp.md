# clamp

Clamps a number between a minimum and a maximum value.

To import and use `clamp` from the "Schema" module:

```ts
import * as Schema from '@effect/schema/Schema'

// Can be accessed like this
Schema.clamp
```

**Signature**

```ts
export declare const clamp: (min: number, max: number) => <I, A extends number>(self: Schema<I, A>) => Schema<I, A>
```