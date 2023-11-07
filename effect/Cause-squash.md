# squash

Squashes a `Cause` down to a single defect, chosen to be the "most important"
defect.

To import and use `squash` from the "Cause" module:

```ts
import * as Cause from 'effect/Cause'

// Can be accessed like this
Cause.squash
```

**Signature**

```ts
export declare const squash: <E>(self: Cause<E>) => unknown
```
