# unit

Represents an `Exit` which succeeds with `undefined`.

To import and use `unit` from the "Exit" module:

```ts
import * as Exit from '@effect/io/Exit'

// Can be accessed like this
Exit.unit
```

**Signature**

```ts
export declare const unit: (_: void) => Exit<never, void>
```
