# tagged

Constructs a new `Request`.

Part of the `Request` module, imported from `@effect/io/Request`.

**Signature**

```ts
export declare const tagged: <R extends Request<any, any> & { _tag: string }>(
  tag: R['_tag']
) => Request.Constructor<R, '_tag'>
```
