# as

Maps the success value of this effect to the specified constant value.

To import and use `as` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from '@effect/data/ReadonlyRecord'

// Can be accessed like this
ReadonlyRecord.as
```

**Signature**

```ts
export declare const as: {
  <B>(b: B): <_>(self: ReadonlyRecord<_>) => Record<string, B>
  <_, B>(self: ReadonlyRecord<_>, b: B): Record<string, B>
}
```
