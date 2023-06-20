# annotated

Constructs a new `Annotated` cause from the specified `annotation`.

To import and use `annotated` from the "Cause" module:

```ts
import * as Cause from '@effect/io/Cause'

// Can be accessed like this
Cause.annotated
```

**Signature**

```ts
export declare const annotated: <E>(cause: Cause<E>, annotation: unknown) => Cause<E>
```
