# updateManyAs

Updates the values of the specified `FiberRef` & value pairs using the provided `FiberId`

To import and use `updateManyAs` from the "FiberRefs" module:

```ts
import * as FiberRefs from "effect/FiberRefs"
// Can be accessed like this
FiberRefs.updateManyAs
```

**Signature**

```ts
export declare const updateManyAs: {
  (options: {
    readonly forkAs?: FiberId.Runtime | undefined
    readonly entries: readonly [
      readonly [
        FiberRef.FiberRef<any>,
        readonly [readonly [FiberId.Runtime, any], ...Array<readonly [FiberId.Runtime, any]>]
      ],
      ...Array<
        readonly [
          FiberRef.FiberRef<any>,
          readonly [readonly [FiberId.Runtime, any], ...Array<readonly [FiberId.Runtime, any]>]
        ]
      >
    ]
  }): (self: FiberRefs) => FiberRefs
  (
    self: FiberRefs,
    options: {
      readonly forkAs?: FiberId.Runtime | undefined
      readonly entries: readonly [
        readonly [
          FiberRef.FiberRef<any>,
          readonly [readonly [FiberId.Runtime, any], ...Array<readonly [FiberId.Runtime, any]>]
        ],
        ...Array<
          readonly [
            FiberRef.FiberRef<any>,
            readonly [readonly [FiberId.Runtime, any], ...Array<readonly [FiberId.Runtime, any]>]
          ]
        >
      ]
    }
  ): FiberRefs
}
```
