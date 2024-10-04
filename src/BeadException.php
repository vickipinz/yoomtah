<?php

namespace Yoomtah;

class BeadException extends \Exception {
    private int $swallowed;

    public function jsonSerialize() {
        throw new BeadException("Rolled too hard");
    }

    public function getIterator(): \Generator {
        yield "Bead";
    }


    public function swallow(): void {
        $this->swallowed++;
    }
}