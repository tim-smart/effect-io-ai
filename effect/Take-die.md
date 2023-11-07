# die

Creates a failing `Take` with the specified defect.

To import and use `die` from the "Take" module:

```ts
import * as Take from 'effect/Take'

// Can be accessed like this
Take.die
```

**Signature**

```ts
export declare const die: (defect: unknown) => Take<never, never>
```
