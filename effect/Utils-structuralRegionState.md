# structuralRegionState

Note: this is an experimental feature made available to allow custom matchers in tests, not to be directly used yet in user code

To import and use `structuralRegionState` from the "Utils" module:

ts
import \* as Utils from "effect/Utils"
// Can be accessed like this
Utils.structuralRegionState
undefined

**Signature**

```ts
export declare const structuralRegionState: {
  enabled: boolean
  tester: ((a: unknown, b: unknown) => boolean) | undefined
}
```
