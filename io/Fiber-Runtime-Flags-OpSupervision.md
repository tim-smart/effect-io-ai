# OpSupervision

The op supervision flag determines whether or not the Effect runtime system
will supervise all operations of the Effect runtime. Use of this flag will
negatively impact performance, but is required for some operations, such as
profiling.

Part of the `Flags` module, imported from `@effect/io/Fiber/Runtime/Flags`.

**Signature**

```ts
export declare const OpSupervision: RuntimeFlag
```
