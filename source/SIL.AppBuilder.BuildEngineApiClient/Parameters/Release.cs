﻿using System;
using System.Collections.Generic;

namespace SIL.AppBuilder.BuildEngineApiClient
{
    public class Release
    {
        public String Channel { get; set; }
        public string Targets { get; set; }
        public Dictionary<string, string> Environment { get; set; }
    }
}
