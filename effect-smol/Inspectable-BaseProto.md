Package: `effect`<br />
Module: `Inspectable`<br />

## Inspectable.BaseProto

A base prototype object that implements the `Inspectable` interface.

This object provides default implementations for the `Inspectable` methods.
It can be used as a prototype for objects that want to be inspectable,
or as a mixin to add inspection capabilities to existing objects.

**Example**

```ts
import { Inspectable } from "effect"

// Use as prototype
const myObject = Object.create(Inspectable.BaseProto)
myObject.name = "example"
myObject.value = 42

console.log(myObject.toString()) // Pretty printed representation

// Or extend in a constructor
function MyClass(this: any, name: string) {
  this.name = name
}
MyClass.prototype = Object.create(Inspectable.BaseProto)
MyClass.prototype.constructor = MyClass
```

**Signature**

```ts
declare const BaseProto: Inspectable
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Inspectable.ts#L232)

Since v2.0.0