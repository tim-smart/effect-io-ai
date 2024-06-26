# delayExponential

Create a `DelayFn` that will generate a duration with an exponential backoff.

To import and use `delayExponential` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.delayExponential
```

**Signature**

```ts
export declare const delayExponential: (baseMillis: number, factor?: number) => DelayFn
```
